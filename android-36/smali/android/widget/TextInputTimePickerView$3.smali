.class Landroid/widget/TextInputTimePickerView$3;
.super Ljava/lang/Object;
.source "TextInputTimePickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextInputTimePickerView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TextInputTimePickerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Landroid/widget/TextInputTimePickerView$3;->this$0:Landroid/widget/TextInputTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 133
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x2

    if-nez p3, :cond_e

    .line 134
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView$3;->this$0:Landroid/widget/TextInputTimePickerView;

    invoke-static {v1}, Landroid/widget/TextInputTimePickerView;->-$$Nest$fgetmListener(Landroid/widget/TextInputTimePickerView;)Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    goto :goto_18

    .line 136
    :cond_e
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView$3;->this$0:Landroid/widget/TextInputTimePickerView;

    invoke-static {v1}, Landroid/widget/TextInputTimePickerView;->-$$Nest$fgetmListener(Landroid/widget/TextInputTimePickerView;)Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    .line 138
    :goto_18
    return-void
.end method

.method public whitelist onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 141
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
