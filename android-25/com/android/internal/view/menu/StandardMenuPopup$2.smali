.class Lcom/android/internal/view/menu/StandardMenuPopup$2;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/StandardMenuPopup;

    #@0
    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$2;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

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
    .line 80
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup$2;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    #@2
    invoke-static {v0}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get3(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 86
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup$2;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    #@a
    invoke-static {v0}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get3(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup$2;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    #@16
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-set0(Lcom/android/internal/view/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    #@1d
    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup$2;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    #@1f
    invoke-static {v0}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get3(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$2;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    #@25
    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get0(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@2c
    .line 89
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@2f
    .line 84
    return-void
.end method
