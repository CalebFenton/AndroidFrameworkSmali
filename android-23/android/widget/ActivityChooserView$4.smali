.class Landroid/widget/ActivityChooserView$4;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/widget/ActivityChooserView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserView;
    .param p2, "$anonymous0"    # Landroid/view/View;

    #@0
    .prologue
    .line 264
    iput-object p1, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    #@2
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    #@5
    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    #@2
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-wrap0(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->showPopup()Z

    #@5
    .line 273
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    #@5
    .line 279
    const/4 v0, 0x1

    #@6
    return v0
.end method
