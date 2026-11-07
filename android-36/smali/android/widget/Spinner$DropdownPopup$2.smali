.class Landroid/widget/Spinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Spinner$DropdownPopup;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Spinner$DropdownPopup;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/Spinner$DropdownPopup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1312
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGlobalLayout()V
    .registers 2

    .line 1315
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1316
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/widget/Spinner$DropdownPopup;->dismiss()V

    goto :goto_1a

    .line 1318
    :cond_10
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    .line 1322
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    # invokes: Landroid/widget/ListPopupWindow;->show()V
    invoke-static {v0}, Landroid/widget/Spinner$DropdownPopup;->access$101(Landroid/widget/Spinner$DropdownPopup;)V

    .line 1324
    :goto_1a
    return-void
.end method
