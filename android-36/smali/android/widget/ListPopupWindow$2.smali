.class Landroid/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ListPopupWindow;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1148
    iput-object p1, p0, Landroid/widget/ListPopupWindow$2;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1151
    iget-object v0, p0, Landroid/widget/ListPopupWindow$2;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 1152
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1153
    iget-object v1, p0, Landroid/widget/ListPopupWindow$2;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 1155
    :cond_13
    return-void
.end method
