.class Landroid/widget/ActivityChooserView$2;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ActivityChooserView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ActivityChooserView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGlobalLayout()V
    .registers 3

    .line 142
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 143
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 144
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$mgetListPopupWindow(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_31

    .line 146
    :cond_1a
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$mgetListPopupWindow(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 147
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_31

    .line 148
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 152
    :cond_31
    :goto_31
    return-void
.end method
