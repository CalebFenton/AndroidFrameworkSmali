.class Landroid/widget/Spinner$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Spinner;

.field final synthetic val$popup:Landroid/widget/Spinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Spinner;
    .param p2, "$anonymous0"    # Landroid/view/View;
    .param p3, "val$popup"    # Landroid/widget/Spinner$DropdownPopup;

    #@0
    .prologue
    .line 271
    iput-object p1, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    #@2
    iput-object p3, p0, Landroid/widget/Spinner$1;->val$popup:Landroid/widget/Spinner$DropdownPopup;

    #@4
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    #@7
    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/widget/Spinner$1;->val$popup:Landroid/widget/Spinner$DropdownPopup;

    #@2
    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 3

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    #@2
    invoke-static {v0}, Landroid/widget/Spinner;->-get1(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 280
    iget-object v0, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    #@e
    invoke-static {v0}, Landroid/widget/Spinner;->-get1(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    #@14
    invoke-virtual {v1}, Landroid/widget/Spinner;->getTextDirection()I

    #@17
    move-result v1

    #@18
    iget-object v2, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    #@1a
    invoke-virtual {v2}, Landroid/widget/Spinner;->getTextAlignment()I

    #@1d
    move-result v2

    #@1e
    invoke-interface {v0, v1, v2}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    #@21
    .line 282
    :cond_0
    const/4 v0, 0x1

    #@22
    return v0
.end method
