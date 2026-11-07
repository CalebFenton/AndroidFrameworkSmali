.class Landroid/widget/ListPopupWindow$1;
.super Landroid/widget/ForwardingListener;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;
    .param p2, "src"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1120
    iput-object p1, p0, Landroid/widget/ListPopupWindow$1;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public blacklist getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .registers 2

    .line 1123
    iget-object v0, p0, Landroid/widget/ListPopupWindow$1;->this$0:Landroid/widget/ListPopupWindow;

    return-object v0
.end method
