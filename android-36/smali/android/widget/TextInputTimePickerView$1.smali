.class Landroid/widget/TextInputTimePickerView$1;
.super Ljava/lang/Object;
.source "TextInputTimePickerView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextInputTimePickerView;

.field final synthetic blacklist val$context:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextInputTimePickerView;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/TextInputTimePickerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Landroid/widget/TextInputTimePickerView$1;->this$0:Landroid/widget/TextInputTimePickerView;

    iput-object p2, p0, Landroid/widget/TextInputTimePickerView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "editable"    # Landroid/text/Editable;

    .line 99
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView$1;->this$0:Landroid/widget/TextInputTimePickerView;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/TextInputTimePickerView;->-$$Nest$mparseAndSetHourInternal(Landroid/widget/TextInputTimePickerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2c

    .line 100
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView$1;->val$context:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 102
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 103
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView$1;->this$0:Landroid/widget/TextInputTimePickerView;

    invoke-static {v1}, Landroid/widget/TextInputTimePickerView;->-$$Nest$fgetmMinuteEditText(Landroid/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 106
    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_2c
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 92
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 95
    return-void
.end method
