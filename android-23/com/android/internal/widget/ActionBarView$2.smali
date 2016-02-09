.class Lcom/android/internal/widget/ActionBarView$2;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarView;

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$2;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$2;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get7(Lcom/android/internal/widget/ActionBarView;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$2;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@a
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    #@c
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$2;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@e
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get6(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x0

    #@13
    invoke-interface {v0, v2, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    #@16
    .line 148
    :cond_0
    return-void
.end method
