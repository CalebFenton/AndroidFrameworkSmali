.class Landroid/widget/Spinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Spinner$DropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Spinner$DropdownPopup;
    .param p2, "val$layoutListener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@0
    .prologue
    .line 1256
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup$3;->this$1:Landroid/widget/Spinner$DropdownPopup;

    #@2
    iput-object p2, p0, Landroid/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    #@0
    .prologue
    .line 1258
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$3;->this$1:Landroid/widget/Spinner$DropdownPopup;

    #@2
    iget-object v1, v1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@4
    invoke-virtual {v1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@7
    move-result-object v0

    #@8
    .line 1259
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    #@a
    .line 1260
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@c
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@f
    .line 1257
    :cond_0
    return-void
.end method
