.class Landroid/view/autofill/AutofillPopupWindow$1;
.super Ljava/lang/Object;
.source "AutofillPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/autofill/AutofillPopupWindow;


# direct methods
.method constructor blacklist <init>(Landroid/view/autofill/AutofillPopupWindow;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/autofill/AutofillPopupWindow;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Landroid/view/autofill/AutofillPopupWindow$1;->this$0:Landroid/view/autofill/AutofillPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 57
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 61
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$1;->this$0:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->dismiss()V

    .line 62
    return-void
.end method
