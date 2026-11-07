.class Landroid/widget/AutoCompleteTextView$MyWatcher;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field private blacklist mOpenBefore:Z

.field final synthetic blacklist this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 902
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$MyWatcher;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 915
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$MyWatcher;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->-$$Nest$fgetmBlockCompletion(Landroid/widget/AutoCompleteTextView;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 925
    :cond_9
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView$MyWatcher;->mOpenBefore:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$MyWatcher;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 927
    :cond_16
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$MyWatcher;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->refreshAutoCompleteResults()V

    .line 928
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 906
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$MyWatcher;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->-$$Nest$fgetmBlockCompletion(Landroid/widget/AutoCompleteTextView;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 910
    :cond_9
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$MyWatcher;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView$MyWatcher;->mOpenBefore:Z

    .line 912
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 931
    return-void
.end method
